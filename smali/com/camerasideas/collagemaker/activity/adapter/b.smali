.class public final synthetic Lcom/camerasideas/collagemaker/activity/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/adapter/l$b;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/adapter/l$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/b;->b:Lcom/camerasideas/collagemaker/activity/adapter/l$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/b;->b:Lcom/camerasideas/collagemaker/activity/adapter/l$b;

    .line 1
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/l$b;->c:Lcom/camerasideas/collagemaker/activity/adapter/l$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    .line 3
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/l$b;->c:Lcom/camerasideas/collagemaker/activity/adapter/l$a;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/adapter/l$b;->d:Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    check-cast v1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {v1, p1, v0}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->s(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)V

    :cond_0
    return-void
.end method
