.class Landroidx/appcompat/widget/i;
.super Landroidx/appcompat/widget/r;
.source "SourceFile"


# instance fields
.field final synthetic k:Landroidx/appcompat/widget/AppCompatSpinner$d;

.field final synthetic l:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/i;->l:Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p3, p0, Landroidx/appcompat/widget/i;->k:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/r;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/i;->k:Landroidx/appcompat/widget/AppCompatSpinner$d;

    return-object v0
.end method

.method public c()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/i;->l:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->b()Landroidx/appcompat/widget/AppCompatSpinner$e;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/i;->l:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
