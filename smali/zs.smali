.class final Lzs;
.super Lht;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzs$b;
    }
.end annotation


# instance fields
.field private final a:Lit;

.field private final b:Ljava/lang/String;

.field private final c:Lxr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxr<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lzr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzr<",
            "*[B>;"
        }
    .end annotation
.end field

.field private final e:Lwr;


# direct methods
.method constructor <init>(Lit;Ljava/lang/String;Lxr;Lzr;Lwr;Lzs$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lht;-><init>()V

    .line 2
    iput-object p1, p0, Lzs;->a:Lit;

    .line 3
    iput-object p2, p0, Lzs;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lzs;->c:Lxr;

    .line 5
    iput-object p4, p0, Lzs;->d:Lzr;

    .line 6
    iput-object p5, p0, Lzs;->e:Lwr;

    return-void
.end method


# virtual methods
.method public a()Lwr;
    .locals 1

    .line 1
    iget-object v0, p0, Lzs;->e:Lwr;

    return-object v0
.end method

.method b()Lxr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxr<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzs;->c:Lxr;

    return-object v0
.end method

.method c()Lzr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzr<",
            "*[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzs;->d:Lzr;

    return-object v0
.end method

.method public d()Lit;
    .locals 1

    .line 1
    iget-object v0, p0, Lzs;->a:Lit;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzs;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lht;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lht;

    .line 3
    iget-object v1, p0, Lzs;->a:Lit;

    invoke-virtual {p1}, Lht;->d()Lit;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzs;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lht;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzs;->c:Lxr;

    .line 5
    invoke-virtual {p1}, Lht;->b()Lxr;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzs;->d:Lzr;

    .line 6
    invoke-virtual {p1}, Lht;->c()Lzr;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzs;->e:Lwr;

    .line 7
    invoke-virtual {p1}, Lht;->a()Lwr;

    move-result-object p1

    invoke-virtual {v1, p1}, Lwr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lzs;->a:Lit;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Lzs;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Lzs;->c:Lxr;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Lzs;->d:Lzr;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v1, p0, Lzs;->e:Lwr;

    invoke-virtual {v1}, Lwr;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SendRequest{transportContext="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzs;->a:Lit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzs;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzs;->c:Lxr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzs;->d:Lzr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzs;->e:Lwr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
