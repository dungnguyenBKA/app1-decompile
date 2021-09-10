.class public final synthetic Lcom/camerasideas/collagemaker/activity/gallery/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/a;->b:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/gallery/ui/a;->b:Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/camerasideas/collagemaker/activity/gallery/ui/MediaFoldersView;->b(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
