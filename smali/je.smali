.class final Lje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/g;


# static fields
.field private static final j:Lel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lel<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Loe;

.field private final c:Lcom/bumptech/glide/load/g;

.field private final d:Lcom/bumptech/glide/load/g;

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/i;

.field private final i:Lcom/bumptech/glide/load/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lel;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lel;-><init>(J)V

    sput-object v0, Lje;->j:Lel;

    return-void
.end method

.method constructor <init>(Loe;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/m;Ljava/lang/Class;Lcom/bumptech/glide/load/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe;",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Lcom/bumptech/glide/load/m<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lje;->b:Loe;

    .line 3
    iput-object p2, p0, Lje;->c:Lcom/bumptech/glide/load/g;

    .line 4
    iput-object p3, p0, Lje;->d:Lcom/bumptech/glide/load/g;

    .line 5
    iput p4, p0, Lje;->e:I

    .line 6
    iput p5, p0, Lje;->f:I

    .line 7
    iput-object p6, p0, Lje;->i:Lcom/bumptech/glide/load/m;

    .line 8
    iput-object p7, p0, Lje;->g:Ljava/lang/Class;

    .line 9
    iput-object p8, p0, Lje;->h:Lcom/bumptech/glide/load/i;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lje;->b:Loe;

    const-class v1, [B

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Loe;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lje;->e:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lje;->f:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 3
    iget-object v1, p0, Lje;->d:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/g;->a(Ljava/security/MessageDigest;)V

    .line 4
    iget-object v1, p0, Lje;->c:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/g;->a(Ljava/security/MessageDigest;)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    iget-object v1, p0, Lje;->i:Lcom/bumptech/glide/load/m;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/g;->a(Ljava/security/MessageDigest;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lje;->h:Lcom/bumptech/glide/load/i;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/i;->a(Ljava/security/MessageDigest;)V

    .line 9
    sget-object v1, Lje;->j:Lel;

    iget-object v2, p0, Lje;->g:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lje;->g:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/g;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 11
    iget-object v3, p0, Lje;->g:Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Lel;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 13
    iget-object p1, p0, Lje;->b:Loe;

    invoke-interface {p1, v0}, Loe;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lje;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lje;

    .line 3
    iget v0, p0, Lje;->f:I

    iget v2, p1, Lje;->f:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lje;->e:I

    iget v2, p1, Lje;->e:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lje;->i:Lcom/bumptech/glide/load/m;

    iget-object v2, p1, Lje;->i:Lcom/bumptech/glide/load/m;

    .line 4
    invoke-static {v0, v2}, Lhl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lje;->g:Ljava/lang/Class;

    iget-object v2, p1, Lje;->g:Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lje;->c:Lcom/bumptech/glide/load/g;

    iget-object v2, p1, Lje;->c:Lcom/bumptech/glide/load/g;

    .line 6
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lje;->d:Lcom/bumptech/glide/load/g;

    iget-object v2, p1, Lje;->d:Lcom/bumptech/glide/load/g;

    .line 7
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lje;->h:Lcom/bumptech/glide/load/i;

    iget-object p1, p1, Lje;->h:Lcom/bumptech/glide/load/i;

    .line 8
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lje;->c:Lcom/bumptech/glide/load/g;

    invoke-interface {v0}, Lcom/bumptech/glide/load/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lje;->d:Lcom/bumptech/glide/load/g;

    invoke-interface {v1}, Lcom/bumptech/glide/load/g;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Lje;->e:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Lje;->f:I

    add-int/2addr v1, v0

    .line 5
    iget-object v0, p0, Lje;->i:Lcom/bumptech/glide/load/m;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lje;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lje;->h:Lcom/bumptech/glide/load/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/i;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ResourceCacheKey{sourceKey="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lje;->c:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lje;->d:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lje;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lje;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lje;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lje;->i:Lcom/bumptech/glide/load/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lje;->h:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
