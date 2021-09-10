.class Lkh0$a;
.super Lkh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkh0;->create(Lfh0;Lak0;)Lkh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfh0;

.field final synthetic b:Lak0;


# direct methods
.method constructor <init>(Lfh0;Lak0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkh0$a;->a:Lfh0;

    iput-object p2, p0, Lkh0$a;->b:Lak0;

    invoke-direct {p0}, Lkh0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lkh0$a;->b:Lak0;

    invoke-virtual {v0}, Lak0;->m()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lfh0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkh0$a;->a:Lfh0;

    return-object v0
.end method

.method public writeTo(Lyj0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkh0$a;->b:Lak0;

    invoke-interface {p1, v0}, Lyj0;->U(Lak0;)Lyj0;

    return-void
.end method
