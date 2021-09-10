.class Lorg/greenrobot/eventbus/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/m$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/l;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:[Lorg/greenrobot/eventbus/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/m;->a:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/greenrobot/eventbus/m$a;

    .line 2
    sput-object v0, Lorg/greenrobot/eventbus/m;->b:[Lorg/greenrobot/eventbus/m$a;

    return-void
.end method

.method constructor <init>(Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lorg/greenrobot/eventbus/m$a;)V
    .locals 14

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p1, Lorg/greenrobot/eventbus/m$a;->e:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2
    :catchall_0
    iget-object v1, p1, Lorg/greenrobot/eventbus/m$a;->e:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    iput-boolean v0, p1, Lorg/greenrobot/eventbus/m$a;->f:Z

    .line 4
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 5
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_0

    and-int/lit16 v5, v5, 0x1448

    if-nez v5, :cond_0

    .line 6
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 7
    array-length v7, v5

    if-ne v7, v0, :cond_0

    .line 8
    const-class v7, Lorg/greenrobot/eventbus/j;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lorg/greenrobot/eventbus/j;

    if-eqz v7, :cond_0

    .line 9
    aget-object v8, v5, v3

    .line 10
    invoke-virtual {p1, v6, v8}, Lorg/greenrobot/eventbus/m$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    invoke-interface {v7}, Lorg/greenrobot/eventbus/j;->threadMode()Lorg/greenrobot/eventbus/ThreadMode;

    move-result-object v9

    .line 12
    iget-object v11, p1, Lorg/greenrobot/eventbus/m$a;->a:Ljava/util/List;

    new-instance v12, Lorg/greenrobot/eventbus/l;

    .line 13
    invoke-interface {v7}, Lorg/greenrobot/eventbus/j;->priority()I

    move-result v10

    invoke-interface {v7}, Lorg/greenrobot/eventbus/j;->sticky()Z

    move-result v13

    move-object v5, v12

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v13

    invoke-direct/range {v5 .. v10}, Lorg/greenrobot/eventbus/l;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    .line 14
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private c(Lorg/greenrobot/eventbus/m$a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/eventbus/m$a;",
            ")",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/l;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/greenrobot/eventbus/m$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p1, Lorg/greenrobot/eventbus/m$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p1, Lorg/greenrobot/eventbus/m$a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v1, p1, Lorg/greenrobot/eventbus/m$a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5
    iget-object v1, p1, Lorg/greenrobot/eventbus/m$a;->d:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p1, Lorg/greenrobot/eventbus/m$a;->e:Ljava/lang/Class;

    .line 7
    iput-boolean v2, p1, Lorg/greenrobot/eventbus/m$a;->f:Z

    .line 8
    iput-object v1, p1, Lorg/greenrobot/eventbus/m$a;->g:Luk0;

    .line 9
    sget-object v1, Lorg/greenrobot/eventbus/m;->b:[Lorg/greenrobot/eventbus/m$a;

    monitor-enter v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 10
    :try_start_0
    sget-object v3, Lorg/greenrobot/eventbus/m;->b:[Lorg/greenrobot/eventbus/m$a;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 11
    aput-object p1, v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private d()Lorg/greenrobot/eventbus/m$a;
    .locals 5

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/m;->b:[Lorg/greenrobot/eventbus/m$a;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 2
    :try_start_0
    sget-object v2, Lorg/greenrobot/eventbus/m;->b:[Lorg/greenrobot/eventbus/m$a;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 3
    aput-object v4, v2, v1

    .line 4
    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v0, Lorg/greenrobot/eventbus/m$a;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/m$a;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method a(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/l;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lorg/greenrobot/eventbus/m;->d()Lorg/greenrobot/eventbus/m$a;

    move-result-object v0

    .line 3
    iput-object p1, v0, Lorg/greenrobot/eventbus/m$a;->e:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lorg/greenrobot/eventbus/m$a;->f:Z

    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Lorg/greenrobot/eventbus/m$a;->g:Luk0;

    .line 6
    :goto_0
    iget-object v3, v0, Lorg/greenrobot/eventbus/m$a;->e:Ljava/lang/Class;

    if-eqz v3, :cond_5

    .line 7
    iget-object v3, v0, Lorg/greenrobot/eventbus/m$a;->g:Luk0;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Luk0;->b()Luk0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, v0, Lorg/greenrobot/eventbus/m$a;->g:Luk0;

    invoke-interface {v3}, Luk0;->b()Luk0;

    move-result-object v3

    .line 9
    iget-object v4, v0, Lorg/greenrobot/eventbus/m$a;->e:Ljava/lang/Class;

    invoke-interface {v3}, Luk0;->c()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 10
    :goto_1
    iput-object v3, v0, Lorg/greenrobot/eventbus/m$a;->g:Luk0;

    if-eqz v3, :cond_3

    .line 11
    invoke-interface {v3}, Luk0;->a()[Lorg/greenrobot/eventbus/l;

    move-result-object v3

    .line 12
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 13
    iget-object v7, v6, Lorg/greenrobot/eventbus/l;->a:Ljava/lang/reflect/Method;

    iget-object v8, v6, Lorg/greenrobot/eventbus/l;->c:Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Lorg/greenrobot/eventbus/m$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 14
    iget-object v7, v0, Lorg/greenrobot/eventbus/m$a;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 15
    :cond_3
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/m;->b(Lorg/greenrobot/eventbus/m$a;)V

    .line 16
    :cond_4
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/m$a;->c()V

    goto :goto_0

    .line 17
    :cond_5
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/m;->c(Lorg/greenrobot/eventbus/m$a;)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 19
    sget-object v1, Lorg/greenrobot/eventbus/m;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 20
    :cond_6
    new-instance v0, Lorg/greenrobot/eventbus/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and its super classes have no public methods with the @Subscribe annotation"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/greenrobot/eventbus/e;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
