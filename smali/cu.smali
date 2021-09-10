.class final Lcu;
.super Lfu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcu$b;
    }
.end annotation


# instance fields
.field private final b:J

.field private final c:I

.field private final d:I

.field private final e:J

.field private final f:I


# direct methods
.method constructor <init>(JIIJILcu$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfu;-><init>()V

    .line 2
    iput-wide p1, p0, Lcu;->b:J

    .line 3
    iput p3, p0, Lcu;->c:I

    .line 4
    iput p4, p0, Lcu;->d:I

    .line 5
    iput-wide p5, p0, Lcu;->e:J

    .line 6
    iput p7, p0, Lcu;->f:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget v0, p0, Lcu;->d:I

    return v0
.end method

.method b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcu;->e:J

    return-wide v0
.end method

.method c()I
    .locals 1

    .line 1
    iget v0, p0, Lcu;->c:I

    return v0
.end method

.method d()I
    .locals 1

    .line 1
    iget v0, p0, Lcu;->f:I

    return v0
.end method

.method e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcu;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lfu;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lfu;

    .line 3
    iget-wide v3, p0, Lcu;->b:J

    invoke-virtual {p1}, Lfu;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcu;->c:I

    .line 4
    invoke-virtual {p1}, Lfu;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcu;->d:I

    .line 5
    invoke-virtual {p1}, Lfu;->a()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcu;->e:J

    .line 6
    invoke-virtual {p1}, Lfu;->b()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcu;->f:I

    .line 7
    invoke-virtual {p1}, Lfu;->d()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcu;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2
    iget v3, p0, Lcu;->c:I

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 3
    iget v3, p0, Lcu;->d:I

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 4
    iget-wide v3, p0, Lcu;->e:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 5
    iget v0, p0, Lcu;->f:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "EventStoreConfig{maxStorageSizeInBytes="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcu;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loadBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcu;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", criticalSectionEnterTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcu;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventCleanUpAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcu;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxBlobByteSizePerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcu;->f:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lic;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
