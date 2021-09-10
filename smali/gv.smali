.class final synthetic Lgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liv$a;


# static fields
.field private static final a:Lgv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgv;

    invoke-direct {v0}, Lgv;-><init>()V

    sput-object v0, Lgv;->a:Lgv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Liv$a;
    .locals 1

    sget-object v0, Lgv;->a:Lgv;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    sget v0, Liv;->i:I

    const-string v0, "ALTER TABLE events ADD COLUMN payload_encoding TEXT"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
