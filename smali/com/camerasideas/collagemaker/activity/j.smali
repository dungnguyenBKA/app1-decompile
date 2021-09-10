.class public final synthetic Lcom/camerasideas/collagemaker/activity/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/j;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/j;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->r()V

    return-void
.end method
