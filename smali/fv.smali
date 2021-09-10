.class final synthetic Lfv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liv$a;


# static fields
.field private static final a:Lfv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfv;

    invoke-direct {v0}, Lfv;-><init>()V

    sput-object v0, Lfv;->a:Lfv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Liv$a;
    .locals 1

    sget-object v0, Lfv;->a:Lfv;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    sget v0, Liv;->i:I

    const-string v0, "ALTER TABLE transport_contexts ADD COLUMN extras BLOB"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX contexts_backend_priority"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
