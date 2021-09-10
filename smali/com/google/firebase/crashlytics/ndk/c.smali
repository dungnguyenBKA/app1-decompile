.class Lcom/google/firebase/crashlytics/ndk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzy;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/ndk/e;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/ndk/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/e;

    check-cast v0, Lcom/google/firebase/crashlytics/ndk/b;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/ndk/b;->a(Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)Lcz;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/ndk/h;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/e;

    check-cast v1, Lcom/google/firebase/crashlytics/ndk/b;

    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/ndk/b;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/g;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/ndk/h;-><init>(Lcom/google/firebase/crashlytics/ndk/g;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/e;

    move-object v2, v1

    check-cast v2, Lcom/google/firebase/crashlytics/ndk/b;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/google/firebase/crashlytics/ndk/b;->h(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/e;

    check-cast v0, Lcom/google/firebase/crashlytics/ndk/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/ndk/b;->f(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/e;

    check-cast v0, Lcom/google/firebase/crashlytics/ndk/b;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/ndk/b;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/e;

    move-object v2, v1

    check-cast v2, Lcom/google/firebase/crashlytics/ndk/b;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/google/firebase/crashlytics/ndk/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/e;

    check-cast v0, Lcom/google/firebase/crashlytics/ndk/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/ndk/b;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public h(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/e;

    check-cast v0, Lcom/google/firebase/crashlytics/ndk/b;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/ndk/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize Crashlytics NDK for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Laz;->i(Ljava/lang/String;)V

    :cond_0
    return v0
.end method
