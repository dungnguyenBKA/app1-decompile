.class public final Ljh0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljh0$a;
    }
.end annotation


# instance fields
.field final a:Ldh0;

.field final b:Ljava/lang/String;

.field final c:Lch0;

.field final d:Lkh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Lng0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljh0$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ljh0$a;->a:Ldh0;

    iput-object v0, p0, Ljh0;->a:Ldh0;

    .line 3
    iget-object v0, p1, Ljh0$a;->b:Ljava/lang/String;

    iput-object v0, p0, Ljh0;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Ljh0$a;->c:Lch0$a;

    .line 5
    new-instance v1, Lch0;

    invoke-direct {v1, v0}, Lch0;-><init>(Lch0$a;)V

    .line 6
    iput-object v1, p0, Ljh0;->c:Lch0;

    .line 7
    iget-object v0, p1, Ljh0$a;->d:Lkh0;

    iput-object v0, p0, Ljh0;->d:Lkh0;

    .line 8
    iget-object p1, p1, Ljh0$a;->e:Ljava/util/Map;

    .line 9
    sget-object v0, Lrh0;->a:[B

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 13
    :goto_0
    iput-object p1, p0, Ljh0;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lkh0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ljh0;->d:Lkh0;

    return-object v0
.end method

.method public b()Lng0;
    .locals 1

    .line 1
    iget-object v0, p0, Ljh0;->f:Lng0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ljh0;->c:Lch0;

    invoke-static {v0}, Lng0;->j(Lch0;)Lng0;

    move-result-object v0

    iput-object v0, p0, Ljh0;->f:Lng0;

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ljh0;->c:Lch0;

    invoke-virtual {v0, p1}, Lch0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Lch0;
    .locals 1

    .line 1
    iget-object v0, p0, Ljh0;->c:Lch0;

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ljh0;->a:Ldh0;

    .line 2
    iget-object v0, v0, Ldh0;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljh0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljh0$a;
    .locals 1

    .line 1
    new-instance v0, Ljh0$a;

    invoke-direct {v0, p0}, Ljh0$a;-><init>(Ljh0;)V

    return-object v0
.end method

.method public h()Ldh0;
    .locals 1

    .line 1
    iget-object v0, p0, Ljh0;->a:Ldh0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Request{method="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljh0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljh0;->a:Ldh0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljh0;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
