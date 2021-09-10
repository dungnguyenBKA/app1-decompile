.class Lcom/zjsoft/admob/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# direct methods
.method constructor <init>(Lcom/zjsoft/admob/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    instance-of p1, p2, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 2
    check-cast p2, Landroid/widget/ImageView;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
