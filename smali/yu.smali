.class final synthetic Lyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv$b;


# static fields
.field private static final a:Lyu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyu;

    invoke-direct {v0}, Lyu;-><init>()V

    sput-object v0, Lyu;->a:Lyu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcv$b;
    .locals 1

    sget-object v0, Lyu;->a:Lyu;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/database/Cursor;

    .line 1
    sget v0, Lcv;->g:I

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method
