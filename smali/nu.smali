.class final synthetic Lnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$b;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnu;->a:J

    return-void
.end method

.method public static a(J)Lcv$b;
    .locals 1

    new-instance v0, Lnu;

    invoke-direct {v0, p0, p1}, Lnu;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Lnu;->a:J

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    sget v2, Lcv;->g:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string v0, "events"

    const-string v1, "timestamp_ms < ?"

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
