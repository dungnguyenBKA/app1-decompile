.class public Ln8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu9;",
            ">;"
        }
    .end annotation
.end field

.field private final b:C

.field private final c:D

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu9;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln8;->a:Ljava/util/List;

    .line 3
    iput-char p2, p0, Ln8;->b:C

    .line 4
    iput-wide p5, p0, Ln8;->c:D

    .line 5
    iput-object p7, p0, Ln8;->d:Ljava/lang/String;

    .line 6
    iput-object p8, p0, Ln8;->e:Ljava/lang/String;

    return-void
.end method

.method public static c(CLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    add-int/lit8 p0, p0, 0x0

    mul-int/lit8 p0, p0, 0x1f

    const/16 v0, 0x1f

    .line 1
    invoke-static {p1, p0, v0}, Lic;->w(Ljava/lang/String;II)I

    move-result p0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu9;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln8;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Ln8;->c:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-char v0, p0, Ln8;->b:C

    iget-object v1, p0, Ln8;->e:Ljava/lang/String;

    iget-object v2, p0, Ln8;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ln8;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
