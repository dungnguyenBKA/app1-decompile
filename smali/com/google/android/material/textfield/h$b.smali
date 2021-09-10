.class Lcom/google/android/material/textfield/h$b;
.super Lcom/google/android/material/textfield/TextInputLayout$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/google/android/material/textfield/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/h;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/h$b;->e:Lcom/google/android/material/textfield/h;

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout$d;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;Ln3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$d;->e(Landroid/view/View;Ln3;)V

    .line 2
    const-class p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln3;->R(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p2}, Ln3;->C()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Ln3;->c0(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ln2;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/h$b;->e:Lcom/google/android/material/textfield/h;

    iget-object v0, p1, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/material/textfield/h;->d(Lcom/google/android/material/textfield/h;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/h$b;->e:Lcom/google/android/material/textfield/h;

    .line 6
    invoke-static {p2}, Lcom/google/android/material/textfield/h;->k(Lcom/google/android/material/textfield/h;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/google/android/material/textfield/h$b;->e:Lcom/google/android/material/textfield/h;

    invoke-static {p2, p1}, Lcom/google/android/material/textfield/h;->l(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V

    :cond_0
    return-void
.end method
