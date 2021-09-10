.class Lcom/google/android/material/floatingactionbutton/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/animation/Animator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    return-void
.end method

.method public b(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    return-void
.end method
