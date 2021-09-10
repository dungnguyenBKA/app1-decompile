.class Lcom/google/android/material/textfield/q;
.super Lcom/google/android/material/textfield/n;
.source "SourceFile"


# instance fields
.field private final d:Landroid/text/TextWatcher;

.field private final e:Lcom/google/android/material/textfield/TextInputLayout$e;

.field private final f:Lcom/google/android/material/textfield/TextInputLayout$f;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/n;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 2
    new-instance p1, Lcom/google/android/material/textfield/q$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/q$a;-><init>(Lcom/google/android/material/textfield/q;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/q;->d:Landroid/text/TextWatcher;

    .line 3
    new-instance p1, Lcom/google/android/material/textfield/q$b;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/q$b;-><init>(Lcom/google/android/material/textfield/q;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/q;->e:Lcom/google/android/material/textfield/TextInputLayout$e;

    .line 4
    new-instance p1, Lcom/google/android/material/textfield/q$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/q$c;-><init>(Lcom/google/android/material/textfield/q;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/q;->f:Lcom/google/android/material/textfield/TextInputLayout$f;

    return-void
.end method

.method static d(Lcom/google/android/material/textfield/q;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic e(Lcom/google/android/material/textfield/q;)Landroid/text/TextWatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/q;->d:Landroid/text/TextWatcher;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/n;->b:Landroid/content/Context;

    const v2, 0x7f0700c5

    .line 2
    invoke-static {v1, v2}, Ld;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->B(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->A(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/q$d;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/q$d;-><init>(Lcom/google/android/material/textfield/q;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->D(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/q;->e:Lcom/google/android/material/textfield/TextInputLayout$e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->c(Lcom/google/android/material/textfield/TextInputLayout$e;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/q;->f:Lcom/google/android/material/textfield/TextInputLayout$f;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->d(Lcom/google/android/material/textfield/TextInputLayout$f;)V

    return-void
.end method
