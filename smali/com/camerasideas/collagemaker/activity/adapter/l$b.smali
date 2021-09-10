.class public Lcom/camerasideas/collagemaker/activity/adapter/l$b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/adapter/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Lcom/camerasideas/collagemaker/activity/adapter/l$a;

.field d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

.field e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/camerasideas/collagemaker/activity/adapter/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/l$b;->e:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/l$b;->c:Lcom/camerasideas/collagemaker/activity/adapter/l$a;

    const p2, 0x7f080100

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/l$b;->b:Landroid/widget/ImageView;

    const p2, 0x7f08025e

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/l$b;->a:Landroid/widget/ImageView;

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/l$b;->b:Landroid/widget/ImageView;

    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/b;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/adapter/b;-><init>(Lcom/camerasideas/collagemaker/activity/adapter/l$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
