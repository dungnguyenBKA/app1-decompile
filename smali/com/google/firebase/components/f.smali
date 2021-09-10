.class final synthetic Lcom/google/firebase/components/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld50;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ld50;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/f;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/firebase/components/f;->a:Ljava/lang/String;

    const-string v1, "Could not instantiate %s"

    const-string v2, "Could not instantiate %s."

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2
    const-class v6, Lcom/google/firebase/components/i;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-array v6, v4, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/i;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v5, Lcom/google/firebase/components/v;

    const-string v6, "Class %s is not an instance of %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    const-string v8, "com.google.firebase.components.ComponentRegistrar"

    aput-object v8, v7, v3

    .line 5
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/firebase/components/v;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 6
    new-instance v5, Lcom/google/firebase/components/v;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 7
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v2}, Lcom/google/firebase/components/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v2

    .line 8
    new-instance v5, Lcom/google/firebase/components/v;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 9
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v2}, Lcom/google/firebase/components/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v1

    .line 10
    new-instance v5, Lcom/google/firebase/components/v;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 11
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v1}, Lcom/google/firebase/components/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v1

    .line 12
    new-instance v5, Lcom/google/firebase/components/v;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 13
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v1}, Lcom/google/firebase/components/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_4
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v0, "Class %s is not an found."

    .line 14
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComponentDiscovery"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_0
    return-object v5
.end method
