.class Landroidx/appcompat/app/m$a;
.super Lj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/m;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/m$a;->a:Landroidx/appcompat/app/m;

    invoke-direct {p0}, Lj3;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/m$a;->a:Landroidx/appcompat/app/m;

    iget-object p1, p1, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/m$a;->a:Landroidx/appcompat/app/m;

    iget-object p1, p1, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Lh3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lh3;->f(Li3;)Lh3;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/m$a;->a:Landroidx/appcompat/app/m;

    iget-object p1, p1, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Lh3;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/m$a;->a:Landroidx/appcompat/app/m;

    iget-object p1, p1, Landroidx/appcompat/app/m;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
