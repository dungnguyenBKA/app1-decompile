.class Landroidx/appcompat/app/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2;


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ll3;)Ll3;
    .locals 4

    .line 1
    invoke-virtual {p2}, Ll3;->e()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Ll3;->c()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Ll3;->d()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Ll3;->b()I

    move-result v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, v3}, Ll3;->h(IIII)Ll3;

    move-result-object p2

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lc3;->p(Landroid/view/View;Ll3;)Ll3;

    move-result-object p1

    return-object p1
.end method
