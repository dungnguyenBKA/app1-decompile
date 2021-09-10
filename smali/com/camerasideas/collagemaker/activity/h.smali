.class public final synthetic Lcom/camerasideas/collagemaker/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/h;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/h;->b:Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;

    .line 1
    iget-object v0, v0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;->d:Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    .line 2
    sget v1, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->o:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
