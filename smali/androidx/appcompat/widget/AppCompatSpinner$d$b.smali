.class Landroidx/appcompat/widget/AppCompatSpinner$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$d;->p(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/widget/AppCompatSpinner$d;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->b:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->b:Landroidx/appcompat/widget/AppCompatSpinner$d;

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner$d;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$d;->E(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->b:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->b:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->D()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d$b;->b:Landroidx/appcompat/widget/AppCompatSpinner$d;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :goto_0
    return-void
.end method
