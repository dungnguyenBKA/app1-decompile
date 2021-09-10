.class Lcom/google/android/material/textfield/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/k;->a:Lcom/google/android/material/textfield/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/k;->a:Lcom/google/android/material/textfield/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/h;->j(Lcom/google/android/material/textfield/h;Z)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/k;->a:Lcom/google/android/material/textfield/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/textfield/h;->g(Lcom/google/android/material/textfield/h;J)J

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/k;->a:Lcom/google/android/material/textfield/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/h;->e(Lcom/google/android/material/textfield/h;Z)V

    return-void
.end method
