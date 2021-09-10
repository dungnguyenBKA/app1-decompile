.class Landroidx/appcompat/widget/ActivityChooserView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->b:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->b:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    .line 2
    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;

    if-ne p1, v1, :cond_0

    .line 3
    iget p1, v0, Landroidx/appcompat/widget/ActivityChooserView;->n:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserView;->e(I)V

    throw v2

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->a()Z

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->b:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->b:Landroidx/appcompat/widget/ActivityChooserView$f;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    throw v2
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->b:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->b:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActivityChooserView$f;

    .line 2
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/ActivityChooserView$f;->getItemViewType(I)I

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->b:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView;->a()Z

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->b:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->b:Landroidx/appcompat/widget/ActivityChooserView$f;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActivityChooserView$f;->a()Z

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->b:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActivityChooserView;->b:Landroidx/appcompat/widget/ActivityChooserView$f;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$g;->b:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v0, Landroidx/appcompat/widget/ActivityChooserView;->h:Landroid/widget/FrameLayout;

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, v0, Landroidx/appcompat/widget/ActivityChooserView;->b:Landroidx/appcompat/widget/ActivityChooserView$f;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
