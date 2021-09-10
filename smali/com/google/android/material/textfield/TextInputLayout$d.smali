.class public Lcom/google/android/material/textfield/TextInputLayout$d;
.super Ln2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final d:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$d;->d:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;Ln3;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Ln2;->e(Landroid/view/View;Ln3;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$d;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$d;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->r()Ljava/lang/CharSequence;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$d;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->q()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout$d;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->n()Ljava/lang/CharSequence;

    move-result-object v2

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v4

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {p2, p1}, Ln3;->p0(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_4

    .line 13
    invoke-virtual {p2, v0}, Ln3;->p0(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    if-eqz v5, :cond_6

    .line 14
    invoke-virtual {p2, v0}, Ln3;->c0(Ljava/lang/CharSequence;)V

    if-nez v3, :cond_5

    if-eqz v5, :cond_5

    const/4 v7, 0x1

    .line 15
    :cond_5
    invoke-virtual {p2, v7}, Ln3;->m0(Z)V

    :cond_6
    if-eqz v8, :cond_8

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, v2

    .line 16
    :goto_4
    invoke-virtual {p2, v1}, Ln3;->Y(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p2, v4}, Ln3;->W(Z)V

    :cond_8
    return-void
.end method
