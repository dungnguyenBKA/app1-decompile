.class final Ljc$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field c:[Ljava/io/File;

.field d:[Ljava/io/File;

.field private e:Z

.field private f:Ljc$c;

.field private g:J

.field final synthetic h:Ljc;


# direct methods
.method constructor <init>(Ljc;Ljava/lang/String;Ljc$a;)V
    .locals 5

    .line 1
    iput-object p1, p0, Ljc$d;->h:Ljc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ljc$d;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljc;->o(Ljc;)I

    move-result p3

    new-array p3, p3, [J

    iput-object p3, p0, Ljc$d;->b:[J

    .line 4
    invoke-static {p1}, Ljc;->o(Ljc;)I

    move-result p3

    new-array p3, p3, [Ljava/io/File;

    iput-object p3, p0, Ljc$d;->c:[Ljava/io/File;

    .line 5
    invoke-static {p1}, Ljc;->o(Ljc;)I

    move-result p3

    new-array p3, p3, [Ljava/io/File;

    iput-object p3, p0, Ljc$d;->d:[Ljava/io/File;

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Ljc;->o(Ljc;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Ljc$d;->c:[Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Ljc;->S(Ljc;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const-string v1, ".tmp"

    .line 11
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Ljc$d;->d:[Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Ljc;->S(Ljc;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 13
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Ljc$d;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Ljc$d;->b:[J

    return-object p0
.end method

.method static synthetic b(Ljc$d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ljc$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Ljc$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ljc$d;->g:J

    return-wide v0
.end method

.method static synthetic d(Ljc$d;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Ljc$d;->g:J

    return-wide p1
.end method

.method static synthetic e(Ljc$d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ljc$d;->e:Z

    return p0
.end method

.method static synthetic f(Ljc$d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Ljc$d;->e:Z

    return p1
.end method

.method static synthetic g(Ljc$d;)Ljc$c;
    .locals 0

    .line 1
    iget-object p0, p0, Ljc$d;->f:Ljc$c;

    return-object p0
.end method

.method static synthetic h(Ljc$d;Ljc$c;)Ljc$c;
    .locals 0

    .line 1
    iput-object p1, p0, Ljc$d;->f:Ljc$c;

    return-object p1
.end method

.method static i(Ljc$d;[Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p1

    iget-object v1, p0, Ljc$d;->h:Ljc;

    invoke-static {v1}, Ljc;->o(Ljc;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Ljc$d;->b:[J

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :catch_0
    invoke-direct {p0, p1}, Ljc$d;->k([Ljava/lang/String;)Ljava/io/IOException;

    throw v2

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Ljc$d;->k([Ljava/lang/String;)Ljava/io/IOException;

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method private k([Ljava/lang/String;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected journal line: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Ljc$d;->b:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    .line 3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
