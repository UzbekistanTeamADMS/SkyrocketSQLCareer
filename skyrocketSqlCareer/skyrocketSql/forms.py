from django import forms

class ProblemSolution(forms.Form):
    solution = forms.CharField(widget=forms.Textarea(attrs={'class' : 'form-control'}))
