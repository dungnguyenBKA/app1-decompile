.class Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;->a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;->a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;->a:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

    iget-object v0, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->b(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
