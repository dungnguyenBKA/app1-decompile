.class Landroidx/appcompat/app/t$a;
.super Lj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/t;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/t$a;->a:Landroidx/appcompat/app/t;

    invoke-direct {p0}, Lj3;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/t$a;->a:Landroidx/appcompat/app/t;

    iget-boolean v0, p1, Landroidx/appcompat/app/t;->p:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/t;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/t$a;->a:Landroidx/appcompat/app/t;

    iget-object p1, p1, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/t$a;->a:Landroidx/appcompat/app/t;

    iget-object p1, p1, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/t$a;->a:Landroidx/appcompat/app/t;

    iget-object p1, p1, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->f(Z)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/t$a;->a:Landroidx/appcompat/app/t;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/t;->t:Lq;

    .line 7
    iget-object v1, p1, Landroidx/appcompat/app/t;->k:Lk$a;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, p1, Landroidx/appcompat/app/t;->j:Lk;

    invoke-interface {v1, v2}, Lk$a;->a(Lk;)V

    .line 9
    iput-object v0, p1, Landroidx/appcompat/app/t;->j:Lk;

    .line 10
    iput-object v0, p1, Landroidx/appcompat/app/t;->k:Lk$a;

    .line 11
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/t$a;->a:Landroidx/appcompat/app/t;

    iget-object p1, p1, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    .line 12
    invoke-static {p1}, Lc3;->t(Landroid/view/View;)V

    :cond_2
    return-void
.end method
