.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje0;


# instance fields
.field public final synthetic a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/q;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/q;->a:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cutoutUndo: exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImageCutoutFragment"

    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/h0;->o1()V

    return-void
.end method
