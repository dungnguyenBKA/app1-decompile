.class Lcom/google/android/material/textfield/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/q;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/textfield/q;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/q$d;->b:Lcom/google/android/material/textfield/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/q$d;->b:Lcom/google/android/material/textfield/q;

    iget-object p1, p1, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/q$d;->b:Lcom/google/android/material/textfield/q;

    invoke-static {v1}, Lcom/google/android/material/textfield/q;->d(Lcom/google/android/material/textfield/q;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    if-ltz v0, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method
