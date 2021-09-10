.class Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$b;
.super Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$g<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$b;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$g;-><init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$a;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$b;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$g;->b:[Ljava/lang/Object;

    check-cast v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast v1, [Ljava/lang/Void;

    .line 5
    iget-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;->h:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->b(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g$c;->h:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;->a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbm;->d(Ljava/lang/String;)Z

    .line 7
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
