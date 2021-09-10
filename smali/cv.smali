.class public Lcv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu;
.implements Llv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcv$c;,
        Lcv$b;,
        Lcv$d;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final f:Lwr;

.field public static final synthetic g:I


# instance fields
.field private final b:Liv;

.field private final c:Lmv;

.field private final d:Lmv;

.field private final e:Lfu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "proto"

    .line 1
    invoke-static {v0}, Lwr;->b(Ljava/lang/String;)Lwr;

    move-result-object v0

    sput-object v0, Lcv;->f:Lwr;

    return-void
.end method

.method constructor <init>(Lmv;Lmv;Lfu;Liv;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcv;->b:Liv;

    .line 3
    iput-object p1, p0, Lcv;->c:Lmv;

    .line 4
    iput-object p2, p0, Lcv;->d:Lmv;

    .line 5
    iput-object p3, p0, Lcv;->e:Lfu;

    return-void
.end method

.method private L(Landroid/database/sqlite/SQLiteDatabase;Lit;)Ljava/lang/Long;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lit;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {p2}, Lit;->d()Lyr;

    move-result-object v3

    invoke-static {v3}, Lrv;->a(Lyr;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {p2}, Lit;->c()[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, " and extras = ?"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2}, Lit;->c()[B

    move-result-object p2

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, " and extras is null"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p2, "_id"

    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array p2, v4, [Ljava/lang/String;

    .line 12
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "transport_contexts"

    move-object v5, p1

    .line 13
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {}, Lyu;->a()Lcv$b;

    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lcv;->m0(Landroid/database/Cursor;Lcv$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic V(Lcv;Lit;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-direct {p0, p2, p1}, Lcv;->L(Landroid/database/sqlite/SQLiteDatabase;Lit;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcv;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {}, Lvu;->a()Lcv$b;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcv;->m0(Landroid/database/Cursor;Lcv$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method static b0(Lcv;Lit;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, p2

    .line 3
    invoke-direct {p0, v12, p1}, Lcv;->L(Landroid/database/sqlite/SQLiteDatabase;Lit;)Ljava/lang/Long;

    move-result-object v3

    const/4 v13, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "_id"

    const-string v5, "transport_name"

    const-string v6, "timestamp_ms"

    const-string v7, "uptime_ms"

    const-string v8, "payload_encoding"

    const-string v9, "payload"

    const-string v10, "code"

    const-string v11, "inline"

    .line 4
    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v3, v0, Lcv;->e:Lfu;

    .line 6
    invoke-virtual {v3}, Lfu;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v4, "events"

    const-string v6, "context_id = ?"

    move-object/from16 v3, p2

    .line 7
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {p0, v2, p1}, Lou;->a(Lcv;Ljava/util/List;Lit;)Lcv$b;

    move-result-object v0

    .line 8
    invoke-static {v3, v0}, Lcv;->m0(Landroid/database/Cursor;Lcv$b;)Ljava/lang/Object;

    .line 9
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "event_id IN ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_2

    .line 12
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lju;

    invoke-virtual {v3}, Lju;->b()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v13, v3, :cond_1

    const/16 v3, 0x2c

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x29

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "event_id"

    const-string v4, "name"

    const-string v5, "value"

    .line 16
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "event_metadata"

    move-object/from16 v3, p2

    .line 18
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0}, Lqu;->a(Ljava/util/Map;)Lcv$b;

    move-result-object v3

    .line 19
    invoke-static {v1, v3}, Lcv;->m0(Landroid/database/Cursor;Lcv$b;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 21
    :goto_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lju;

    .line 23
    invoke-virtual {v3}, Lju;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {v3}, Lju;->a()Let;

    move-result-object v4

    invoke-virtual {v4}, Let;->l()Let$a;

    move-result-object v4

    .line 25
    invoke-virtual {v3}, Lju;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcv$c;

    .line 26
    iget-object v7, v6, Lcv$c;->a:Ljava/lang/String;

    iget-object v6, v6, Lcv$c;->b:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Let$a;->c(Ljava/lang/String;Ljava/lang/String;)Let$a;

    goto :goto_3

    .line 27
    :cond_4
    invoke-virtual {v3}, Lju;->b()J

    move-result-wide v5

    invoke-virtual {v3}, Lju;->c()Lit;

    move-result-object v3

    invoke-virtual {v4}, Let$a;->d()Let;

    move-result-object v4

    .line 28
    new-instance v7, Ldu;

    invoke-direct {v7, v5, v6, v3, v4}, Ldu;-><init>(JLit;Let;)V

    .line 29
    invoke-interface {v1, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method static i0(Lcv;Ljava/util/List;Lit;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p3

    .line 1
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x7

    .line 3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 4
    :goto_1
    invoke-static {}, Let;->a()Let$a;

    move-result-object v6

    .line 5
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Let$a;->i(Ljava/lang/String;)Let$a;

    const/4 v7, 0x2

    .line 6
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Let$a;->h(J)Let$a;

    const/4 v7, 0x3

    .line 7
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Let$a;->j(J)Let$a;

    const/4 v7, 0x4

    if-eqz v4, :cond_2

    .line 8
    new-instance v1, Ldt;

    .line 9
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 10
    sget-object v4, Lcv;->f:Lwr;

    goto :goto_2

    .line 11
    :cond_1
    invoke-static {v4}, Lwr;->b(Ljava/lang/String;)Lwr;

    move-result-object v4

    :goto_2
    const/4 v5, 0x5

    .line 12
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldt;-><init>(Lwr;[B)V

    .line 13
    invoke-virtual {v6, v1}, Let$a;->g(Ldt;)Let$a;

    goto :goto_4

    .line 14
    :cond_2
    new-instance v4, Ldt;

    .line 15
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 16
    sget-object v7, Lcv;->f:Lwr;

    goto :goto_3

    .line 17
    :cond_3
    invoke-static {v7}, Lwr;->b(Ljava/lang/String;)Lwr;

    move-result-object v7

    .line 18
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcv;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "bytes"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    new-array v12, v5, [Ljava/lang/String;

    .line 19
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v9, "event_payloads"

    const-string v11, "event_id = ?"

    const-string v15, "sequence_num"

    .line 20
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {}, Lpu;->a()Lcv$b;

    move-result-object v5

    .line 21
    invoke-static {v1, v5}, Lcv;->m0(Landroid/database/Cursor;Lcv$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 22
    invoke-direct {v4, v7, v1}, Ldt;-><init>(Lwr;[B)V

    .line 23
    invoke-virtual {v6, v4}, Let$a;->g(Ldt;)Let$a;

    :goto_4
    const/4 v1, 0x6

    .line 24
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 25
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Let$a;->f(Ljava/lang/Integer;)Let$a;

    .line 26
    :cond_4
    invoke-virtual {v6}, Let$a;->d()Let;

    move-result-object v1

    .line 27
    new-instance v4, Ldu;

    move-object/from16 v5, p2

    invoke-direct {v4, v2, v3, v5, v1}, Ldu;-><init>(JLit;Let;)V

    move-object/from16 v1, p1

    .line 28
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method static j0(Lcv;Lit;Let;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcv;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_count"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcv;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "PRAGMA page_size"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    mul-long v2, v2, v0

    .line 3
    iget-object v0, p0, Lcv;->e:Lfu;

    invoke-virtual {v0}, Lfu;->e()J

    move-result-wide v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v2, v0

    if-ltz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-wide/16 p0, -0x1

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-direct {p0, p3, p1}, Lcv;->L(Landroid/database/sqlite/SQLiteDatabase;Lit;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 8
    invoke-virtual {p1}, Lit;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "backend_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lit;->d()Lyr;

    move-result-object v2

    invoke-static {v2}, Lrv;->a(Lyr;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "next_request_ms"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    invoke-virtual {p1}, Lit;->c()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {p1}, Lit;->c()[B

    move-result-object p1

    invoke-static {p1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v2, "extras"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "transport_contexts"

    .line 13
    invoke-virtual {p3, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 14
    :goto_1
    iget-object p0, p0, Lcv;->e:Lfu;

    invoke-virtual {p0}, Lfu;->d()I

    move-result p0

    .line 15
    invoke-virtual {p2}, Let;->e()Ldt;

    move-result-object p1

    invoke-virtual {p1}, Ldt;->a()[B

    move-result-object p1

    .line 16
    array-length v0, p1

    if-gt v0, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 17
    :goto_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "context_id"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    invoke-virtual {p2}, Let;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "transport_name"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Let;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp_ms"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    invoke-virtual {p2}, Let;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "uptime_ms"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    invoke-virtual {p2}, Let;->e()Ldt;

    move-result-object v2

    invoke-virtual {v2}, Ldt;->b()Lwr;

    move-result-object v2

    invoke-virtual {v2}, Lwr;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payload_encoding"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Let;->d()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "num_attempts"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "inline"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v0, :cond_5

    move-object v2, p1

    goto :goto_3

    :cond_5
    new-array v2, v5, [B

    :goto_3
    const-string v3, "payload"

    .line 26
    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "events"

    .line 27
    invoke-virtual {p3, v2, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-string v5, "event_id"

    if-nez v0, :cond_6

    .line 28
    array-length v0, p1

    int-to-double v6, v0

    int-to-double v8, p0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    :goto_4
    if-gt v4, v0, :cond_6

    add-int/lit8 v6, v4, -0x1

    mul-int v6, v6, p0

    mul-int v7, v4, p0

    .line 29
    array-length v8, p1

    .line 30
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 31
    invoke-static {p1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 32
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "sequence_num"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "bytes"

    .line 35
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "event_payloads"

    .line 36
    invoke-virtual {p3, v6, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 37
    :cond_6
    invoke-virtual {p2}, Let;->i()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 38
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "value"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event_metadata"

    .line 42
    invoke-virtual {p3, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_5

    .line 43
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private k0(Lcv$d;Lcv$b;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcv$d<",
            "TT;>;",
            "Lcv$b<",
            "Ljava/lang/Throwable;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcv;->d:Lmv;

    invoke-interface {v0}, Lmv;->a()J

    move-result-wide v0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcv$d;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 3
    iget-object v3, p0, Lcv;->d:Lmv;

    invoke-interface {v3}, Lmv;->a()J

    move-result-wide v3

    iget-object v5, p0, Lcv;->e:Lfu;

    invoke-virtual {v5}, Lfu;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 4
    invoke-interface {p2, v2}, Lcv$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x32

    .line 5
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method private static l0(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lju;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lju;

    invoke-virtual {v1}, Lju;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static m0(Landroid/database/Cursor;Lcv$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcv$b<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lcv$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 3
    throw p1
.end method


# virtual methods
.method S(Lcv$b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcv$b<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcv;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    invoke-interface {p1, v0}, Lcv$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public T(Lit;Let;)Lju;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lit;->d()Lyr;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p2}, Let;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p1}, Lit;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SQLiteEventStore"

    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    .line 4
    invoke-static {v1, v2, v0}, Lst;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {p0, p1, p2}, Lxu;->a(Lcv;Lit;Let;)Lcv$b;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcv;->S(Lcv$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    new-instance v2, Ldu;

    invoke-direct {v2, v0, v1, p1, p2}, Ldu;-><init>(JLit;Let;)V

    return-object v2
.end method

.method public X(Lit;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcv;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lit;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p1}, Lit;->d()Lyr;

    move-result-object p1

    invoke-static {p1}, Lrv;->a(Lyr;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {}, Lav;->a()Lcv$b;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcv;->m0(Landroid/database/Cursor;Lcv$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public Z(Lit;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbv;->a(Lcv;Lit;)Lcv$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcv;->S(Lcv$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public a0(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lju;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    .line 2
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcv;->l0(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lzu;->a(Ljava/lang/String;)Lcv$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcv;->S(Lcv$b;)Ljava/lang/Object;

    return-void
.end method

.method public c()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcv;->c:Lmv;

    invoke-interface {v0}, Lmv;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcv;->e:Lfu;

    invoke-virtual {v2}, Lfu;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Lnu;->a(J)Lcv$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcv;->S(Lcv$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcv;->b:Liv;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public d(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lju;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DELETE FROM events WHERE _id in "

    .line 2
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcv;->l0(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcv;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public j(Llv$a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llv$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcv;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lru;->b(Landroid/database/sqlite/SQLiteDatabase;)Lcv$d;

    move-result-object v1

    invoke-static {}, Lsu;->a()Lcv$b;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcv;->k0(Lcv$d;Lcv$b;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-interface {p1}, Llv$a;->execute()Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public n(Lit;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit;",
            ")",
            "Ljava/lang/Iterable<",
            "Lju;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Llu;->a(Lcv;Lit;)Lcv$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcv;->S(Lcv$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

.method o()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    iget-object v0, p0, Lcv;->b:Liv;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ltu;->b(Liv;)Lcv$d;

    move-result-object v0

    invoke-static {}, Lwu;->a()Lcv$b;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcv;->k0(Lcv$d;Lcv$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public r(Lit;J)V
    .locals 0

    .line 1
    invoke-static {p2, p3, p1}, Lku;->a(JLit;)Lcv$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcv;->S(Lcv$b;)Ljava/lang/Object;

    return-void
.end method

.method public v()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lit;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lmu;->a()Lcv$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcv;->S(Lcv$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
