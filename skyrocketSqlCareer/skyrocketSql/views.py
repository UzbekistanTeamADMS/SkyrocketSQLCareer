from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from .models import Question, Topic
from .forms import ProblemSolution
from django.db import connection;

# Create your views here.
def index(request):
    questions = Question.objects.all()
    topics = Topic.objects.all()
    context = {
        'question_list': questions,
        'topics': topics
    }
    return render(request, "skyrocketSql/index.html", context)

def topic(request):
    return HttpResponse("hello")

def problem(request, question_id):
    question = get_object_or_404(Question, pk=question_id)
    if request.method == "POST":
        form = ProblemSolution(request.POST)
        if form.is_valid():
            answ = form.cleaned_data["solution"]
            print(answ)
            with connection.cursor() as cursor:
                try: 
                    cursor.execute(answ)
                    check = cursor.fetchall()
                    if question.checkSolution(check):
                        print('herehrehrehre')
                        return render(request, 'skyrocketSql/problem.html', {
                            'question': question,
                            'form': form,
                            'isCorrect': "correct"
                        })
                    else:
                        print('sssssss')
                        return render(request, 'skyrocketSql/problem.html', {
                            'question': question,
                            'form': form,
                            'isCorrect': "incorrect"
                        })
                except (KeyError):
                    return render(request, 'skyrocketSql/problem.html', {
                            'question': question,
                            'form': form,
                            'isCorrect': "incorrect"
                        })
    else:
        form = ProblemSolution()
    return render(request, 'skyrocketSql/problem.html', {
        'question': question,
        'form': form})

