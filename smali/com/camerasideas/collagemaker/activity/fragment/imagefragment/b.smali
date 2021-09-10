.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm$d;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/b;->c:I

    return-void
.end method


# virtual methods
.method public final l(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/b;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/b;->c:I

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->a2(ILandroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V

    return-void
.end method
