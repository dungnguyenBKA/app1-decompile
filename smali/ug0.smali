.class public final Lug0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lug0$a;
    }
.end annotation


# static fields
.field private static final e:[Lrg0;

.field private static final f:[Lrg0;

.field public static final g:Lug0;

.field public static final h:Lug0;


# instance fields
.field final a:Z

.field final b:Z

.field final c:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final d:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/16 v0, 0xb

    new-array v1, v0, [Lrg0;

    .line 1
    sget-object v2, Lrg0;->q:Lrg0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Lrg0;->r:Lrg0;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Lrg0;->s:Lrg0;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Lrg0;->t:Lrg0;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Lrg0;->u:Lrg0;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Lrg0;->k:Lrg0;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Lrg0;->m:Lrg0;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v16, Lrg0;->l:Lrg0;

    const/16 v17, 0x7

    aput-object v16, v1, v17

    sget-object v18, Lrg0;->n:Lrg0;

    const/16 v19, 0x8

    aput-object v18, v1, v19

    sget-object v20, Lrg0;->p:Lrg0;

    const/16 v21, 0x9

    aput-object v20, v1, v21

    sget-object v22, Lrg0;->o:Lrg0;

    const/16 v23, 0xa

    aput-object v22, v1, v23

    sput-object v1, Lug0;->e:[Lrg0;

    const/16 v0, 0x12

    new-array v0, v0, [Lrg0;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    aput-object v14, v0, v15

    aput-object v16, v0, v17

    aput-object v18, v0, v19

    aput-object v20, v0, v21

    aput-object v22, v0, v23

    .line 2
    sget-object v2, Lrg0;->i:Lrg0;

    const/16 v4, 0xb

    aput-object v2, v0, v4

    sget-object v2, Lrg0;->j:Lrg0;

    const/16 v4, 0xc

    aput-object v2, v0, v4

    sget-object v2, Lrg0;->g:Lrg0;

    const/16 v4, 0xd

    aput-object v2, v0, v4

    sget-object v2, Lrg0;->h:Lrg0;

    const/16 v4, 0xe

    aput-object v2, v0, v4

    sget-object v2, Lrg0;->e:Lrg0;

    const/16 v4, 0xf

    aput-object v2, v0, v4

    sget-object v2, Lrg0;->f:Lrg0;

    const/16 v4, 0x10

    aput-object v2, v0, v4

    sget-object v2, Lrg0;->d:Lrg0;

    const/16 v4, 0x11

    aput-object v2, v0, v4

    sput-object v0, Lug0;->f:[Lrg0;

    .line 3
    new-instance v2, Lug0$a;

    invoke-direct {v2, v5}, Lug0$a;-><init>(Z)V

    .line 4
    invoke-virtual {v2, v1}, Lug0$a;->b([Lrg0;)Lug0$a;

    new-array v1, v7, [Loh0;

    sget-object v4, Loh0;->c:Loh0;

    aput-object v4, v1, v3

    sget-object v6, Loh0;->d:Loh0;

    aput-object v6, v1, v5

    .line 5
    invoke-virtual {v2, v1}, Lug0$a;->e([Loh0;)Lug0$a;

    .line 6
    invoke-virtual {v2, v5}, Lug0$a;->c(Z)Lug0$a;

    .line 7
    new-instance v1, Lug0$a;

    invoke-direct {v1, v5}, Lug0$a;-><init>(Z)V

    .line 8
    invoke-virtual {v1, v0}, Lug0$a;->b([Lrg0;)Lug0$a;

    new-array v2, v11, [Loh0;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    sget-object v4, Loh0;->e:Loh0;

    aput-object v4, v2, v7

    sget-object v4, Loh0;->f:Loh0;

    aput-object v4, v2, v9

    .line 9
    invoke-virtual {v1, v2}, Lug0$a;->e([Loh0;)Lug0$a;

    .line 10
    invoke-virtual {v1, v5}, Lug0$a;->c(Z)Lug0$a;

    .line 11
    new-instance v2, Lug0;

    invoke-direct {v2, v1}, Lug0;-><init>(Lug0$a;)V

    .line 12
    sput-object v2, Lug0;->g:Lug0;

    .line 13
    new-instance v1, Lug0$a;

    invoke-direct {v1, v5}, Lug0$a;-><init>(Z)V

    .line 14
    invoke-virtual {v1, v0}, Lug0$a;->b([Lrg0;)Lug0$a;

    new-array v0, v5, [Loh0;

    aput-object v4, v0, v3

    .line 15
    invoke-virtual {v1, v0}, Lug0$a;->e([Loh0;)Lug0$a;

    .line 16
    invoke-virtual {v1, v5}, Lug0$a;->c(Z)Lug0$a;

    .line 17
    new-instance v0, Lug0$a;

    invoke-direct {v0, v3}, Lug0$a;-><init>(Z)V

    .line 18
    new-instance v1, Lug0;

    invoke-direct {v1, v0}, Lug0;-><init>(Lug0$a;)V

    .line 19
    sput-object v1, Lug0;->h:Lug0;

    return-void
.end method

.method constructor <init>(Lug0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lug0$a;->a:Z

    iput-boolean v0, p0, Lug0;->a:Z

    .line 3
    iget-object v0, p1, Lug0$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lug0;->c:[Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lug0$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lug0;->d:[Ljava/lang/String;

    .line 5
    iget-boolean p1, p1, Lug0$a;->d:Z

    iput-boolean p1, p0, Lug0;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lug0;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lug0;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lrh0;->o:Ljava/util/Comparator;

    .line 3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v2, v0, v3}, Lrh0;->v(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lug0;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Lrg0;->b:Ljava/util/Comparator;

    .line 6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v2, v0, p1}, Lrh0;->v(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lug0;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lug0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lug0;

    .line 3
    iget-boolean v2, p0, Lug0;->a:Z

    iget-boolean v3, p1, Lug0;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 4
    iget-object v2, p0, Lug0;->c:[Ljava/lang/String;

    iget-object v3, p1, Lug0;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lug0;->d:[Ljava/lang/String;

    iget-object v3, p1, Lug0;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-boolean v2, p0, Lug0;->b:Z

    iget-boolean p1, p1, Lug0;->b:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lug0;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lug0;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lug0;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lug0;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lug0;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lug0;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "[all enabled]"

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v0, v6

    .line 5
    invoke-static {v7}, Lrg0;->a(Ljava/lang/String;)Lrg0;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    .line 8
    :goto_2
    iget-object v4, p0, Lug0;->d:[Ljava/lang/String;

    if-eqz v4, :cond_6

    if-eqz v4, :cond_5

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    array-length v3, v4

    :goto_3
    if-ge v1, v3, :cond_4

    aget-object v5, v4, v1

    .line 11
    invoke-static {v5}, Loh0;->a(Ljava/lang/String;)Loh0;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 12
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 13
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionSpec(cipherSuites="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lug0;->b:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
