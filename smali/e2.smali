.class public Le2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2$e;,
        Le2$f;,
        Le2$g;
    }
.end annotation


# static fields
.field static final a:Lc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lf2;

.field static final c:Ljava/lang/Object;

.field static final d:Le0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lf2$d<",
            "Le2$g;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final synthetic f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lc0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lc0;-><init>(I)V

    sput-object v0, Le2;->a:Lc0;

    .line 2
    new-instance v0, Lf2;

    const-string v1, "fonts"

    const/16 v2, 0xa

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lf2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le2;->b:Lf2;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le2;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Le0;

    invoke-direct {v0}, Le0;-><init>()V

    sput-object v0, Le2;->d:Le0;

    .line 5
    new-instance v0, Le2$d;

    invoke-direct {v0}, Le2$d;-><init>()V

    sput-object v0, Le2;->e:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;Ld2;)Le2$e;
    .locals 20

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2
    invoke-virtual/range {p2 .. p2}, Ld2;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 4
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ld2;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 5
    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 6
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 8
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 9
    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Le2;->e:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Ld2;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual/range {p2 .. p2}, Ld2;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v1, v3}, Lc1;->p(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    .line 14
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v5, :cond_6

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    sget-object v8, Le2;->e:Ljava/util/Comparator;

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    .line 18
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 19
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_3

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move-object v4, v6

    :goto_6
    if-nez v4, :cond_7

    .line 20
    new-instance v0, Le2$e;

    invoke-direct {v0, v7, v6}, Le2$e;-><init>(I[Le2$f;)V

    return-object v0

    .line 21
    :cond_7
    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 26
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 27
    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "file"

    .line 28
    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 30
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "_id"

    const-string v10, "file_id"

    const-string v11, "font_ttc_index"

    const-string v12, "font_variation_settings"

    const-string v13, "font_weight"

    const-string v14, "font_italic"

    const-string v15, "result_code"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "query = ?"

    new-array v12, v7, [Ljava/lang/String;

    .line 31
    invoke-virtual/range {p2 .. p2}, Ld2;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    .line 32
    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 33
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_e

    const-string v1, "result_code"

    .line 34
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "_id"

    .line 36
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v8, "file_id"

    .line 37
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "font_ttc_index"

    .line 38
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "font_weight"

    .line 39
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "font_italic"

    .line 40
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 41
    :goto_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, -0x1

    if-eq v1, v12, :cond_8

    .line 42
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v19, v13

    goto :goto_8

    :cond_8
    const/4 v13, 0x0

    const/16 v19, 0x0

    :goto_8
    if-eq v9, v12, :cond_9

    .line 43
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v16, v13

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_9
    if-ne v8, v12, :cond_a

    .line 44
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 45
    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    goto :goto_a

    .line 46
    :cond_a
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 47
    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    :goto_a
    move-object v15, v13

    if-eq v10, v12, :cond_b

    .line 48
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v17, v13

    goto :goto_b

    :cond_b
    const/16 v13, 0x190

    const/16 v17, 0x190

    :goto_b
    if-eq v11, v12, :cond_c

    .line 49
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v12, v7, :cond_c

    const/4 v12, 0x1

    const/16 v18, 0x1

    goto :goto_c

    :cond_c
    const/4 v12, 0x0

    const/16 v18, 0x0

    .line 50
    :goto_c
    new-instance v12, Le2$f;

    move-object v14, v12

    invoke-direct/range {v14 .. v19}, Le2$f;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :cond_d
    move-object v1, v4

    :cond_e
    if-eqz v6, :cond_f

    .line 51
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f
    new-array v0, v3, [Le2$f;

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le2$f;

    .line 53
    new-instance v1, Le2$e;

    invoke-direct {v1, v3, v0}, Le2$e;-><init>(I[Le2$f;)V

    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_10

    .line 54
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_10
    throw v0

    .line 56
    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found content provider "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but package was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual/range {p2 .. p2}, Ld2;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_12
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v1, "No package found for authority: "

    invoke-static {v1, v2}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method static b(Landroid/content/Context;Ld2;I)Le2$g;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0, p1}, Le2;->a(Landroid/content/Context;Landroid/os/CancellationSignal;Ld2;)Le2$e;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p1}, Le2$e;->b()I

    move-result v1

    const/4 v2, -0x3

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Le2$e;->a()[Le2$f;

    move-result-object p1

    .line 4
    invoke-static {p0, v0, p1, p2}, Lm1;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[Le2$f;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 5
    new-instance p1, Le2$g;

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-direct {p1, p0, v2}, Le2$g;-><init>(Landroid/graphics/Typeface;I)V

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Le2$e;->b()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    const/4 v2, -0x2

    .line 7
    :cond_2
    new-instance p0, Le2$g;

    invoke-direct {p0, v0, v2}, Le2$g;-><init>(Landroid/graphics/Typeface;I)V

    return-object p0

    .line 8
    :catch_0
    new-instance p0, Le2$g;

    const/4 p1, -0x1

    invoke-direct {p0, v0, p1}, Le2$g;-><init>(Landroid/graphics/Typeface;I)V

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ld2;Lj1;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ld2;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Le2;->a:Lc0;

    invoke-virtual {v1, v0}, Lc0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, v1}, Lj1;->d(Landroid/graphics/Typeface;)V

    :cond_0
    return-object v1

    :cond_1
    if-eqz p4, :cond_4

    const/4 v1, -0x1

    if-ne p5, v1, :cond_4

    .line 4
    invoke-static {p0, p1, p6}, Le2;->b(Landroid/content/Context;Ld2;I)Le2$g;

    move-result-object p0

    if-eqz p2, :cond_3

    .line 5
    iget p1, p0, Le2$g;->b:I

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Le2$g;->a:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, p3}, Lj1;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2, p1, p3}, Lj1;->a(ILandroid/os/Handler;)V

    .line 8
    :cond_3
    :goto_0
    iget-object p0, p0, Le2$g;->a:Landroid/graphics/Typeface;

    return-object p0

    .line 9
    :cond_4
    new-instance v1, Le2$a;

    invoke-direct {v1, p0, p1, p6, v0}, Le2$a;-><init>(Landroid/content/Context;Ld2;ILjava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p4, :cond_5

    .line 10
    :try_start_0
    sget-object p1, Le2;->b:Lf2;

    invoke-virtual {p1, v1, p5}, Lf2;->e(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le2$g;

    iget-object p0, p1, Le2$g;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0

    :cond_5
    if-nez p2, :cond_6

    move-object p1, p0

    goto :goto_1

    .line 11
    :cond_6
    new-instance p1, Le2$b;

    invoke-direct {p1, p2, p3}, Le2$b;-><init>(Lj1;Landroid/os/Handler;)V

    .line 12
    :goto_1
    sget-object p2, Le2;->c:Ljava/lang/Object;

    monitor-enter p2

    .line 13
    :try_start_1
    sget-object p3, Le2;->d:Le0;

    invoke-virtual {p3, v0}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    if-eqz p4, :cond_8

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_7
    monitor-exit p2

    return-object p0

    :cond_8
    if-eqz p1, :cond_9

    .line 16
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p3, v0, p4}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_9
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    sget-object p1, Le2;->b:Lf2;

    new-instance p2, Le2$c;

    invoke-direct {p2, v0}, Le2$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Lf2;->d(Ljava/util/concurrent/Callable;Lf2$d;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
