.class public Lcom/vungle/warren/model/AdAsset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/AdAsset$ErrorType;,
        Lcom/vungle/warren/model/AdAsset$FileType;,
        Lcom/vungle/warren/model/AdAsset$Status;
    }
.end annotation


# instance fields
.field public final adIdentifier:Ljava/lang/String;

.field public fileSize:J

.field public fileType:I

.field public final identifier:Ljava/lang/String;

.field public final localPath:Ljava/lang/String;

.field public parentId:Ljava/lang/String;

.field public retryCount:I

.field retryTypeError:I

.field public final serverPath:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p4, p0, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 7
    iput-wide p1, p0, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/vungle/warren/model/AdAsset;->retryCount:I

    .line 9
    iput p1, p0, Lcom/vungle/warren/model/AdAsset;->retryTypeError:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 2
    :cond_1
    check-cast p1, Lcom/vungle/warren/model/AdAsset;

    .line 3
    iget v2, p0, Lcom/vungle/warren/model/AdAsset;->status:I

    iget v3, p1, Lcom/vungle/warren/model/AdAsset;->status:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/vungle/warren/model/AdAsset;->fileType:I

    iget v3, p1, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-wide v2, p0, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    iget-wide v4, p1, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lcom/vungle/warren/model/AdAsset;->retryCount:I

    iget v3, p1, Lcom/vungle/warren/model/AdAsset;->retryCount:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lcom/vungle/warren/model/AdAsset;->retryTypeError:I

    iget v3, p1, Lcom/vungle/warren/model/AdAsset;->retryTypeError:I

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_0
    return v1

    .line 9
    :cond_8
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_9
    iget-object v2, p1, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_a

    :goto_1
    return v1

    .line 10
    :cond_a
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_b
    iget-object v2, p1, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_2
    return v1

    .line 11
    :cond_c
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_3

    :cond_d
    iget-object v2, p1, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v2, :cond_e

    :goto_3
    return v1

    .line 12
    :cond_e
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_f
    if-nez p1, :cond_10

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_11
    :goto_5
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->status:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->fileType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->retryCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->retryTypeError:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AdAsset{identifier=\'"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", adIdentifier=\'"

    invoke-static {v0, v1, v2, v3}, Lic;->v(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    const-string v3, ", serverPath=\'"

    invoke-static {v0, v1, v2, v3}, Lic;->v(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    const-string v3, ", localPath=\'"

    invoke-static {v0, v1, v2, v3}, Lic;->v(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    const-string v3, ", status="

    invoke-static {v0, v1, v2, v3}, Lic;->v(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->fileType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryTypeError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->retryTypeError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
