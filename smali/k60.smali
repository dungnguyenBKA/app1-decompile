.class public final Lk60;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lr70;

.field private b:Ly60;

.field private c:Ld60;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ll60<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La70;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La70;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lr70;->d:Lr70;

    iput-object v0, p0, Lk60;->a:Lr70;

    .line 3
    sget-object v0, Ly60;->b:Ly60;

    iput-object v0, p0, Lk60;->b:Ly60;

    .line 4
    sget-object v0, Lc60;->b:Lc60;

    iput-object v0, p0, Lk60;->c:Ld60;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk60;->d:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk60;->e:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk60;->f:Ljava/util/List;

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lk60;->g:I

    .line 9
    iput v0, p0, Lk60;->h:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lk60;->i:Z

    return-void
.end method


# virtual methods
.method public a()Lj60;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v15, Ljava/util/ArrayList;

    iget-object v1, v0, Lk60;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lk60;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, v0, Lk60;->e:Ljava/util/List;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {v15}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lk60;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget v1, v0, Lk60;->g:I

    iget v2, v0, Lk60;->h:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 8
    new-instance v3, Lz50;

    const-class v4, Ljava/util/Date;

    invoke-direct {v3, v4, v1, v2}, Lz50;-><init>(Ljava/lang/Class;II)V

    .line 9
    new-instance v4, Lz50;

    const-class v5, Ljava/sql/Timestamp;

    invoke-direct {v4, v5, v1, v2}, Lz50;-><init>(Ljava/lang/Class;II)V

    .line 10
    new-instance v5, Lz50;

    const-class v6, Ljava/sql/Date;

    invoke-direct {v5, v6, v1, v2}, Lz50;-><init>(Ljava/lang/Class;II)V

    .line 11
    const-class v1, Ljava/util/Date;

    invoke-static {v1, v3}, Ls80;->a(Ljava/lang/Class;Lz60;)La70;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1, v4}, Ls80;->a(Ljava/lang/Class;Lz60;)La70;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    const-class v1, Ljava/sql/Date;

    invoke-static {v1, v5}, Ls80;->a(Ljava/lang/Class;Lz60;)La70;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    new-instance v19, Lj60;

    move-object/from16 v1, v19

    iget-object v2, v0, Lk60;->a:Lr70;

    iget-object v3, v0, Lk60;->c:Ld60;

    iget-object v4, v0, Lk60;->d:Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v8, v0, Lk60;->i:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lk60;->b:Ly60;

    const/4 v13, 0x0

    iget v14, v0, Lk60;->g:I

    iget v5, v0, Lk60;->h:I

    move-object/from16 v18, v15

    move v15, v5

    iget-object v5, v0, Lk60;->e:Ljava/util/List;

    move-object/from16 v16, v5

    iget-object v5, v0, Lk60;->f:Ljava/util/List;

    move-object/from16 v17, v5

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v18}, Lj60;-><init>(Lr70;Ld60;Ljava/util/Map;ZZZZZZZLy60;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method
