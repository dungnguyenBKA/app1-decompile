.class final Ly10;
.super Li20$d$d$a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly10$b;
    }
.end annotation


# instance fields
.field private final a:Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj20<",
            "Li20$d$d$a$b$e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Li20$d$d$a$b$c;

.field private final c:Li20$d$d$a$b$d;

.field private final d:Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj20<",
            "Li20$d$d$a$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj20;Li20$d$d$a$b$c;Li20$d$d$a$b$d;Lj20;Ly10$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$d$d$a$b;-><init>()V

    .line 2
    iput-object p1, p0, Ly10;->a:Lj20;

    .line 3
    iput-object p2, p0, Ly10;->b:Li20$d$d$a$b$c;

    .line 4
    iput-object p3, p0, Ly10;->c:Li20$d$d$a$b$d;

    .line 5
    iput-object p4, p0, Ly10;->d:Lj20;

    return-void
.end method


# virtual methods
.method public b()Lj20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj20<",
            "Li20$d$d$a$b$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly10;->d:Lj20;

    return-object v0
.end method

.method public c()Li20$d$d$a$b$c;
    .locals 1

    .line 1
    iget-object v0, p0, Ly10;->b:Li20$d$d$a$b$c;

    return-object v0
.end method

.method public d()Li20$d$d$a$b$d;
    .locals 1

    .line 1
    iget-object v0, p0, Ly10;->c:Li20$d$d$a$b$d;

    return-object v0
.end method

.method public e()Lj20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj20<",
            "Li20$d$d$a$b$e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly10;->a:Lj20;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Li20$d$d$a$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Li20$d$d$a$b;

    .line 3
    iget-object v1, p0, Ly10;->a:Lj20;

    invoke-virtual {p1}, Li20$d$d$a$b;->e()Lj20;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj20;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ly10;->b:Li20$d$d$a$b$c;

    .line 4
    invoke-virtual {p1}, Li20$d$d$a$b;->c()Li20$d$d$a$b$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ly10;->c:Li20$d$d$a$b$d;

    .line 5
    invoke-virtual {p1}, Li20$d$d$a$b;->d()Li20$d$d$a$b$d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ly10;->d:Lj20;

    .line 6
    invoke-virtual {p1}, Li20$d$d$a$b;->b()Lj20;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj20;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Ly10;->a:Lj20;

    invoke-virtual {v0}, Lj20;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Ly10;->b:Li20$d$d$a$b$c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Ly10;->c:Li20$d$d$a$b$d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v1, p0, Ly10;->d:Lj20;

    invoke-virtual {v1}, Lj20;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Execution{threads="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ly10;->a:Lj20;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly10;->b:Li20$d$d$a$b$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly10;->c:Li20$d$d$a$b$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", binaries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly10;->d:Lj20;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
