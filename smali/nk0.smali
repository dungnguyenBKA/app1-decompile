.class final Lnk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lnk0;

.field g:Lnk0;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lnk0;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnk0;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lnk0;->d:Z

    return-void
.end method

.method constructor <init>([BIIZZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lnk0;->a:[B

    .line 7
    iput p2, p0, Lnk0;->b:I

    .line 8
    iput p3, p0, Lnk0;->c:I

    .line 9
    iput-boolean p4, p0, Lnk0;->d:Z

    .line 10
    iput-boolean p5, p0, Lnk0;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lnk0;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lnk0;->f:Lnk0;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lnk0;->g:Lnk0;

    iput-object v0, v3, Lnk0;->f:Lnk0;

    .line 3
    iget-object v0, p0, Lnk0;->f:Lnk0;

    iput-object v3, v0, Lnk0;->g:Lnk0;

    .line 4
    iput-object v1, p0, Lnk0;->f:Lnk0;

    .line 5
    iput-object v1, p0, Lnk0;->g:Lnk0;

    return-object v2
.end method

.method public final b(Lnk0;)Lnk0;
    .locals 1

    .line 1
    iput-object p0, p1, Lnk0;->g:Lnk0;

    .line 2
    iget-object v0, p0, Lnk0;->f:Lnk0;

    iput-object v0, p1, Lnk0;->f:Lnk0;

    .line 3
    iget-object v0, p0, Lnk0;->f:Lnk0;

    iput-object p1, v0, Lnk0;->g:Lnk0;

    .line 4
    iput-object p1, p0, Lnk0;->f:Lnk0;

    return-object p1
.end method

.method final c()Lnk0;
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lnk0;->d:Z

    .line 2
    new-instance v0, Lnk0;

    iget-object v2, p0, Lnk0;->a:[B

    iget v3, p0, Lnk0;->b:I

    iget v4, p0, Lnk0;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnk0;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final d(Lnk0;I)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lnk0;->e:Z

    if-eqz v0, :cond_3

    .line 2
    iget v0, p1, Lnk0;->c:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    .line 3
    iget-boolean v1, p1, Lnk0;->d:Z

    if-nez v1, :cond_1

    add-int v1, v0, p2

    .line 4
    iget v3, p1, Lnk0;->b:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    .line 5
    iget-object v1, p1, Lnk0;->a:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v0, p1, Lnk0;->c:I

    iget v1, p1, Lnk0;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lnk0;->c:I

    .line 7
    iput v2, p1, Lnk0;->b:I

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lnk0;->a:[B

    iget v1, p0, Lnk0;->b:I

    iget-object v2, p1, Lnk0;->a:[B

    iget v3, p1, Lnk0;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p1, Lnk0;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lnk0;->c:I

    .line 12
    iget p1, p0, Lnk0;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lnk0;->b:I

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
