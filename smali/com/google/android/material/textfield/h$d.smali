.class Lcom/google/android/material/textfield/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/textfield/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/h$d;->b:Lcom/google/android/material/textfield/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/h$d;->b:Lcom/google/android/material/textfield/h;

    iget-object v0, p1, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 3
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/material/textfield/h;->l(Lcom/google/android/material/textfield/h;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
