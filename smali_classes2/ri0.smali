.class public final Lri0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lak0;

.field public static final e:Lak0;

.field public static final f:Lak0;

.field public static final g:Lak0;

.field public static final h:Lak0;

.field public static final i:Lak0;


# instance fields
.field public final a:Lak0;

.field public final b:Lak0;

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    .line 1
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lri0;->d:Lak0;

    const-string v0, ":status"

    .line 2
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lri0;->e:Lak0;

    const-string v0, ":method"

    .line 3
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lri0;->f:Lak0;

    const-string v0, ":path"

    .line 4
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lri0;->g:Lak0;

    const-string v0, ":scheme"

    .line 5
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lri0;->h:Lak0;

    const-string v0, ":authority"

    .line 6
    invoke-static {v0}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v0

    sput-object v0, Lri0;->i:Lak0;

    return-void
.end method

.method public constructor <init>(Lak0;Lak0;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lri0;->a:Lak0;

    .line 5
    iput-object p2, p0, Lri0;->b:Lak0;

    .line 6
    invoke-virtual {p1}, Lak0;->m()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lak0;->m()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lri0;->c:I

    return-void
.end method

.method public constructor <init>(Lak0;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p2}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lri0;-><init>(Lak0;Lak0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object p1

    invoke-static {p2}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lri0;-><init>(Lak0;Lak0;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lri0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lri0;

    .line 3
    iget-object v0, p0, Lri0;->a:Lak0;

    iget-object v2, p1, Lri0;->a:Lak0;

    invoke-virtual {v0, v2}, Lak0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lri0;->b:Lak0;

    iget-object p1, p1, Lri0;->b:Lak0;

    .line 4
    invoke-virtual {v0, p1}, Lak0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lri0;->a:Lak0;

    invoke-virtual {v0}, Lak0;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lri0;->b:Lak0;

    invoke-virtual {v1}, Lak0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lri0;->a:Lak0;

    invoke-virtual {v1}, Lak0;->q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lri0;->b:Lak0;

    invoke-virtual {v1}, Lak0;->q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Lrh0;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
