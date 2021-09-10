.class Lcom/google/android/material/bottomappbar/BottomAppBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsx<",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lmy;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getScaleY()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lmy;->G(F)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTranslationX()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/d;->d()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomappbar/d;->g(F)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lmy;

    move-result-object v0

    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/d;->b()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomappbar/d;->e(F)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lmy;

    move-result-object v0

    invoke-virtual {v0}, Lmy;->invalidateSelf()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lmy;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getScaleY()F

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Lmy;->G(F)V

    return-void
.end method
