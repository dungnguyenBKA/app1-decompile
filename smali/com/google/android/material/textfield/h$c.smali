.class Lcom/google/android/material/textfield/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/h$c;->a:Lcom/google/android/material/textfield/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/h$c;->a:Lcom/google/android/material/textfield/h;

    .line 2
    iget-object v1, p1, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/material/textfield/h;->d(Lcom/google/android/material/textfield/h;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/h$c;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/h;->m(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/h$c;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/h;->n(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/h$c;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/h;->o(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 8
    iget-object v1, p0, Lcom/google/android/material/textfield/h$c;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v1}, Lcom/google/android/material/textfield/h;->p(Lcom/google/android/material/textfield/h;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/material/textfield/h$c;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v1}, Lcom/google/android/material/textfield/h;->p(Lcom/google/android/material/textfield/h;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->G(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/h$c;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v0}, Lcom/google/android/material/textfield/h;->q(Lcom/google/android/material/textfield/h;)Lcom/google/android/material/textfield/TextInputLayout$d;

    move-result-object v0

    .line 12
    iget-object v1, p1, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1, v0}, Lc3;->u(Landroid/view/View;Ln2;)V

    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->F(Z)V

    return-void
.end method
