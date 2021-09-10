.class public final synthetic Lcom/camerasideas/collagemaker/activity/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/o;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/o;->b:Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    .line 1
    iget-object v0, v0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mProgressView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method
