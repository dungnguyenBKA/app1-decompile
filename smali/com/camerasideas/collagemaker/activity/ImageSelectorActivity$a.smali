.class Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->z(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/baseutils/widget/AnimCircleView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;Lcom/camerasideas/baseutils/widget/AnimCircleView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity$a;->b:Lcom/camerasideas/baseutils/widget/AnimCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity$a;->b:Lcom/camerasideas/baseutils/widget/AnimCircleView;

    invoke-virtual {v0}, Lcom/camerasideas/baseutils/widget/AnimCircleView;->startAnimator()V

    return-void
.end method
