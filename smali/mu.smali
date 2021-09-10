.class final synthetic Lmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$b;


# static fields
.field private static final a:Lmu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmu;

    invoke-direct {v0}, Lmu;-><init>()V

    sput-object v0, Lmu;->a:Lmu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcv$b;
    .locals 1

    sget-object v0, Lmu;->a:Lmu;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    sget v0, Lcv;->g:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {}, Luu;->a()Lcv$b;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcv;->m0(Landroid/database/Cursor;Lcv$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
