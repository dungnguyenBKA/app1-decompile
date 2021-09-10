.class public Lcom/camerasideas/collagemaker/activity/adapter/i$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/adapter/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroidx/appcompat/widget/AppCompatImageView;

.field public c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/camerasideas/collagemaker/activity/adapter/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const p2, 0x7f08018d

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$c;->a:Landroid/view/View;

    const p2, 0x7f0801d6

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0801d2

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/i$c;->c:Landroid/widget/TextView;

    return-void
.end method
