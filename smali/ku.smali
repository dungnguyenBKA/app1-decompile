.class final synthetic Lku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$b;


# instance fields
.field private final a:J

.field private final b:Lit;


# direct methods
.method private constructor <init>(JLit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lku;->a:J

    iput-object p3, p0, Lku;->b:Lit;

    return-void
.end method

.method public static a(JLit;)Lcv$b;
    .locals 1

    new-instance v0, Lku;

    invoke-direct {v0, p0, p1, p2}, Lku;-><init>(JLit;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-wide v0, p0, Lku;->a:J

    iget-object v2, p0, Lku;->b:Lit;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    sget v3, Lcv;->g:I

    .line 2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "next_request_ms"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Lit;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 5
    invoke-virtual {v2}, Lit;->d()Lyr;

    move-result-object v1

    invoke-static {v1}, Lrv;->a(Lyr;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "transport_contexts"

    const-string v5, "backend_name = ? and priority = ?"

    .line 6
    invoke-virtual {p1, v1, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x0

    if-ge v0, v4, :cond_0

    .line 7
    invoke-virtual {v2}, Lit;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "backend_name"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lit;->d()Lyr;

    move-result-object v0

    invoke-static {v0}, Lrv;->a(Lyr;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "priority"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {p1, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-object v5
.end method
