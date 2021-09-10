.class Landroidx/appcompat/app/AppCompatDelegateImpl$e$a;
.super Lj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$e;->a(Lk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$e$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    invoke-direct {p0}, Lj3;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$e$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$e$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$e$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lc3;->t(Landroid/view/View;)V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$e$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$e$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Lh3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lh3;->f(Li3;)Lh3;

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$e$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$e;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$e;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->t:Lh3;

    return-void
.end method
