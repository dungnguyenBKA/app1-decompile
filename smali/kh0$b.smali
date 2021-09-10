.class Lkh0$b;
.super Lkh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkh0;->create(Lfh0;[BII)Lkh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfh0;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lfh0;I[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkh0$b;->a:Lfh0;

    iput p2, p0, Lkh0$b;->b:I

    iput-object p3, p0, Lkh0$b;->c:[B

    iput p4, p0, Lkh0$b;->d:I

    invoke-direct {p0}, Lkh0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget v0, p0, Lkh0$b;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lfh0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkh0$b;->a:Lfh0;

    return-object v0
.end method

.method public writeTo(Lyj0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkh0$b;->c:[B

    iget v1, p0, Lkh0$b;->d:I

    iget v2, p0, Lkh0$b;->b:I

    invoke-interface {p1, v0, v1, v2}, Lyj0;->write([BII)Lyj0;

    return-void
.end method
