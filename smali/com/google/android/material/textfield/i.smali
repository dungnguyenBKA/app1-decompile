.class Lcom/google/android/material/textfield/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic b:Landroid/widget/AutoCompleteTextView;

.field final synthetic c:Lcom/google/android/material/textfield/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/i;->c:Lcom/google/android/material/textfield/h;

    iput-object p2, p0, Lcom/google/android/material/textfield/i;->b:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/google/android/material/textfield/i;->c:Lcom/google/android/material/textfield/h;

    invoke-static {p2}, Lcom/google/android/material/textfield/h;->f(Lcom/google/android/material/textfield/h;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/google/android/material/textfield/i;->c:Lcom/google/android/material/textfield/h;

    invoke-static {p2, v0}, Lcom/google/android/material/textfield/h;->j(Lcom/google/android/material/textfield/h;Z)Z

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/textfield/i;->c:Lcom/google/android/material/textfield/h;

    iget-object v1, p0, Lcom/google/android/material/textfield/i;->b:Landroid/widget/AutoCompleteTextView;

    invoke-static {p2, v1}, Lcom/google/android/material/textfield/h;->l(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    return v0
.end method
