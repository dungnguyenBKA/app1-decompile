.class public Le9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9;


# instance fields
.field private final a:Lx8;

.field private final b:Lf9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf9<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lz8;

.field private final d:Lu8;

.field private final e:Lw8;

.field private final f:Lu8;

.field private final g:Lu8;

.field private final h:Lu8;

.field private final i:Lu8;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Le9;-><init>(Lx8;Lf9;Lz8;Lu8;Lw8;Lu8;Lu8;Lu8;Lu8;)V

    return-void
.end method

.method public constructor <init>(Lx8;Lf9;Lz8;Lu8;Lw8;Lu8;Lu8;Lu8;Lu8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx8;",
            "Lf9<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lz8;",
            "Lu8;",
            "Lw8;",
            "Lu8;",
            "Lu8;",
            "Lu8;",
            "Lu8;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le9;->a:Lx8;

    .line 4
    iput-object p2, p0, Le9;->b:Lf9;

    .line 5
    iput-object p3, p0, Le9;->c:Lz8;

    .line 6
    iput-object p4, p0, Le9;->d:Lu8;

    .line 7
    iput-object p5, p0, Le9;->e:Lw8;

    .line 8
    iput-object p6, p0, Le9;->h:Lu8;

    .line 9
    iput-object p7, p0, Le9;->i:Lu8;

    .line 10
    iput-object p8, p0, Le9;->f:Lu8;

    .line 11
    iput-object p9, p0, Le9;->g:Lu8;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lx8;
    .locals 1

    .line 1
    iget-object v0, p0, Le9;->a:Lx8;

    return-object v0
.end method

.method public c()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Le9;->i:Lu8;

    return-object v0
.end method

.method public d()Lw8;
    .locals 1

    .line 1
    iget-object v0, p0, Le9;->e:Lw8;

    return-object v0
.end method

.method public e()Lf9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le9;->b:Lf9;

    return-object v0
.end method

.method public f()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Le9;->d:Lu8;

    return-object v0
.end method

.method public g()Lz8;
    .locals 1

    .line 1
    iget-object v0, p0, Le9;->c:Lz8;

    return-object v0
.end method

.method public h()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Le9;->f:Lu8;

    return-object v0
.end method

.method public i()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Le9;->g:Lu8;

    return-object v0
.end method

.method public j()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Le9;->h:Lu8;

    return-object v0
.end method
