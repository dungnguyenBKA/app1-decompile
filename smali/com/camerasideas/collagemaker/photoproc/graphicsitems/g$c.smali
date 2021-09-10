.class Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;
.super Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;

.field final synthetic h:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;->h:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;->g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;

    return-void
.end method


# virtual methods
.method protected f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;->g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;->h:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;->h:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->c(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;)Z

    move-result v2

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-virtual {v0, p1, v1, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->j2(ILjava/lang/String;Z)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;->g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$b;

    .line 5
    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->d(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;)Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    return-void
.end method
