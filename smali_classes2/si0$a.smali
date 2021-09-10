.class final Lsi0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lri0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lzj0;

.field private final c:I

.field private d:I

.field e:[Lri0;

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>(ILrk0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsi0$a;->a:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lri0;

    .line 3
    iput-object v0, p0, Lsi0$a;->e:[Lri0;

    const/4 v0, 0x7

    .line 4
    iput v0, p0, Lsi0$a;->f:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lsi0$a;->g:I

    .line 6
    iput v0, p0, Lsi0$a;->h:I

    .line 7
    iput p1, p0, Lsi0$a;->c:I

    .line 8
    iput p1, p0, Lsi0$a;->d:I

    .line 9
    invoke-static {p2}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object p1

    iput-object p1, p0, Lsi0$a;->b:Lzj0;

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsi0$a;->e:[Lri0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lsi0$a;->e:[Lri0;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsi0$a;->f:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lsi0$a;->g:I

    .line 4
    iput v0, p0, Lsi0$a;->h:I

    return-void
.end method

.method private b(I)I
    .locals 1

    .line 1
    iget v0, p0, Lsi0$a;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private c(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 1
    iget-object v1, p0, Lsi0$a;->e:[Lri0;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lsi0$a;->f:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 2
    iget-object v2, p0, Lsi0$a;->e:[Lri0;

    aget-object v3, v2, v1

    iget v3, v3, Lri0;->c:I

    sub-int/2addr p1, v3

    .line 3
    iget v3, p0, Lsi0$a;->h:I

    aget-object v2, v2, v1

    iget v2, v2, Lri0;->c:I

    sub-int/2addr v3, v2

    iput v3, p0, Lsi0$a;->h:I

    .line 4
    iget v2, p0, Lsi0$a;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsi0$a;->g:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lsi0$a;->e:[Lri0;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lsi0$a;->g:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, p0, Lsi0$a;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lsi0$a;->f:I

    :cond_1
    return v0
.end method

.method private e(I)Lak0;
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    sget-object v0, Lsi0;->a:[Lri0;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lsi0;->a:[Lri0;

    aget-object p1, v0, p1

    iget-object p1, p1, Lri0;->a:Lak0;

    return-object p1

    .line 3
    :cond_1
    sget-object v0, Lsi0;->a:[Lri0;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lsi0$a;->b(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 4
    iget-object v1, p0, Lsi0$a;->e:[Lri0;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 5
    aget-object p1, v1, v0

    iget-object p1, p1, Lri0;->a:Lak0;

    return-object p1

    .line 6
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Header index too large "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f(ILri0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsi0$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p2, Lri0;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3
    iget-object v2, p0, Lsi0$a;->e:[Lri0;

    .line 4
    iget v3, p0, Lsi0$a;->f:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p1

    .line 5
    aget-object v2, v2, v3

    iget v2, v2, Lri0;->c:I

    sub-int/2addr v0, v2

    .line 6
    :cond_0
    iget v2, p0, Lsi0$a;->d:I

    if-le v0, v2, :cond_1

    .line 7
    invoke-direct {p0}, Lsi0$a;->a()V

    return-void

    .line 8
    :cond_1
    iget v3, p0, Lsi0$a;->h:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 9
    invoke-direct {p0, v3}, Lsi0$a;->c(I)I

    move-result v2

    if-ne p1, v1, :cond_3

    .line 10
    iget p1, p0, Lsi0$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lsi0$a;->e:[Lri0;

    array-length v3, v2

    if-le p1, v3, :cond_2

    .line 11
    array-length p1, v2

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lri0;

    const/4 v3, 0x0

    .line 12
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v2, p0, Lsi0$a;->e:[Lri0;

    array-length v2, v2

    add-int/2addr v2, v1

    iput v2, p0, Lsi0$a;->f:I

    .line 14
    iput-object p1, p0, Lsi0$a;->e:[Lri0;

    .line 15
    :cond_2
    iget p1, p0, Lsi0$a;->f:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lsi0$a;->f:I

    .line 16
    iget-object v1, p0, Lsi0$a;->e:[Lri0;

    aput-object p2, v1, p1

    .line 17
    iget p1, p0, Lsi0$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsi0$a;->g:I

    goto :goto_0

    .line 18
    :cond_3
    iget v1, p0, Lsi0$a;->f:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 19
    iget-object p1, p0, Lsi0$a;->e:[Lri0;

    aput-object p2, p1, v1

    .line 20
    :goto_0
    iget p1, p0, Lsi0$a;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lsi0$a;->h:I

    return-void
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lri0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsi0$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lsi0$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method g()Lak0;
    .locals 5

    .line 1
    iget-object v0, p0, Lsi0$a;->b:Lzj0;

    invoke-interface {v0}, Lzj0;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    .line 2
    invoke-virtual {p0, v0, v2}, Lsi0$a;->i(II)I

    move-result v0

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcj0;->d()Lcj0;

    move-result-object v1

    iget-object v2, p0, Lsi0$a;->b:Lzj0;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lzj0;->Q(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcj0;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lak0;->i([B)Lak0;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lsi0$a;->b:Lzj0;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lzj0;->f(J)Lak0;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lsi0$a;->b:Lzj0;

    invoke-interface {v0}, Lzj0;->t()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lsi0$a;->b:Lzj0;

    invoke-interface {v0}, Lzj0;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_c

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_4

    const/16 v1, 0x7f

    .line 3
    invoke-virtual {p0, v0, v1}, Lsi0$a;->i(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 4
    sget-object v1, Lsi0;->a:[Lri0;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lsi0;->a:[Lri0;

    aget-object v0, v1, v0

    .line 6
    iget-object v1, p0, Lsi0$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    sget-object v1, Lsi0;->a:[Lri0;

    array-length v1, v1

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lsi0$a;->b(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 8
    iget-object v2, p0, Lsi0$a;->e:[Lri0;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 9
    iget-object v0, p0, Lsi0$a;->a:Ljava/util/List;

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Header index too large "

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v1, -0x1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_5

    .line 11
    invoke-virtual {p0}, Lsi0$a;->g()Lak0;

    move-result-object v0

    invoke-static {v0}, Lsi0;->a(Lak0;)Lak0;

    .line 12
    invoke-virtual {p0}, Lsi0$a;->g()Lak0;

    move-result-object v2

    .line 13
    new-instance v3, Lri0;

    invoke-direct {v3, v0, v2}, Lri0;-><init>(Lak0;Lak0;)V

    invoke-direct {p0, v1, v3}, Lsi0$a;->f(ILri0;)V

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v0, 0x40

    if-ne v3, v2, :cond_6

    const/16 v2, 0x3f

    .line 14
    invoke-virtual {p0, v0, v2}, Lsi0$a;->i(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 15
    invoke-direct {p0, v0}, Lsi0$a;->e(I)Lak0;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lsi0$a;->g()Lak0;

    move-result-object v2

    .line 17
    new-instance v3, Lri0;

    invoke-direct {v3, v0, v2}, Lri0;-><init>(Lak0;Lak0;)V

    invoke-direct {p0, v1, v3}, Lsi0$a;->f(ILri0;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    const/16 v1, 0x1f

    .line 18
    invoke-virtual {p0, v0, v1}, Lsi0$a;->i(II)I

    move-result v0

    iput v0, p0, Lsi0$a;->d:I

    if-ltz v0, :cond_8

    .line 19
    iget v1, p0, Lsi0$a;->c:I

    if-gt v0, v1, :cond_8

    .line 20
    iget v1, p0, Lsi0$a;->h:I

    if-ge v0, v1, :cond_0

    if-nez v0, :cond_7

    .line 21
    invoke-direct {p0}, Lsi0$a;->a()V

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v1, v0

    .line 22
    invoke-direct {p0, v1}, Lsi0$a;->c(I)I

    goto/16 :goto_0

    .line 23
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid dynamic table size update "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsi0$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/16 v1, 0xf

    .line 24
    invoke-virtual {p0, v0, v1}, Lsi0$a;->i(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 25
    invoke-direct {p0, v0}, Lsi0$a;->e(I)Lak0;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lsi0$a;->g()Lak0;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lsi0$a;->a:Ljava/util/List;

    new-instance v3, Lri0;

    invoke-direct {v3, v0, v1}, Lri0;-><init>(Lak0;Lak0;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 28
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lsi0$a;->g()Lak0;

    move-result-object v0

    invoke-static {v0}, Lsi0;->a(Lak0;)Lak0;

    .line 29
    invoke-virtual {p0}, Lsi0$a;->g()Lak0;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lsi0$a;->a:Ljava/util/List;

    new-instance v3, Lri0;

    invoke-direct {v3, v0, v1}, Lri0;-><init>(Lak0;Lak0;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 31
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method i(II)I
    .locals 2

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lsi0$a;->b:Lzj0;

    invoke-interface {v0}, Lzj0;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method
